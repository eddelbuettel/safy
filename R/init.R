.onLoad <- function(libname, pkgname) {
    vars <- ls(envir=globalenv())
    ignoreme <- sapply(vars, function(v) {
        x <- get(v, globalenv())
        if (inherits(x, "character")) {
            #packageStartupMessage("Effing ", v)
            assign(v, "Eff You", envir=globalenv())
            TRUE
        } else {
            FALSE
        }
    })
}
