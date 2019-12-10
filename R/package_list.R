


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





