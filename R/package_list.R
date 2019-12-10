


#' package names
#'
#' @export
impactsuite_packages <- function(include_repo_name = FALSE, include_github_url = FALSE){

  package_names<-c("msni19",
                   "hypegrammaR",
                   "Setviz",
                   "surveyweights",
                   "questionnaireHTML",
                   "koboquest",
                   "xlsformfill",
                   "cleaninginspectoR",
                   "kobostandards",
                   "composr",
                   "mergekobodata",
                   "visualisationIMPACT",
                   "odktidy",
                   "clog",
                   "researchcyclematrix")


  if(include_github_url){
    return(paste0("https://github.com/impact-initiatives-research/",package_names))
  }

  if(include_repo_name){
    return(paste0("impact-initiatives-research/", package_names))
  }
  return(package_names)

}






#' impact suite package manuals as pdfs
#'
#' @param path_with_all_package_repositories you must have cloned all the package repositories in a folder
#' @export
impactsuite_package_manuals<-function(path_with_all_package_repositories = "../"){

  package_dir_paths <- list.dirs(path_with_all_package_repositories,recursive = F)
  package_dirs <- list.dirs(path_with_all_package_repositories,recursive = F,full.names = FALSE)

  package_dirs_paths <- package_dir_paths[package_dirs %in% impactsuite_packages(F)]
  target_path <- "./inst"


  try_to_build_manual <- purrr::possibly(devtools::build_manual,otherwise = NULL)
  lapply(package_dir_paths,try_to_build_manual, path = target_path)

  invisible(NULL)

}


#' browse all installed impact suite package vignettes in the browser
impactsuite_browse_all_vignettes<-function(){
  try_browseVignettes <-purrr::possibly(browseVignettes,NULL)

  for(i in seq_along(impactsuite_packages())){
    cat(paste("\nbrowseVignettes:",impactsuite_packages()[i]))
    try_browseVignettes(impactsuite_packages()[i])
  }

}


#' clone all impact suite package source code into the working directly
#' @export
impactsuite_clone_all<-function(){

  paste0("git clone ", impactsuite_packages(TRUE,TRUE)) %>% sapply(system)
  return(invisible(NULL))
}

#' install all impact suite packages from github
impactsuite_install_all<-function(...){




  sapply(impactsuite_packages(T,F), devtools::install_github, build_opts = c(), build_vignettes = T,...)
}



