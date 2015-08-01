!contains(included_modules, qtversit-deps) {
    included_modules += qtversit-deps
        
    !CONFIG(harbour) {
        QT += versit
    }
} 
