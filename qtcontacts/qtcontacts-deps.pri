!contains(included_modules, qtcontacts-deps) {
    included_modules += qtcontacts-deps
    
    QT += core-private
    
    !CONFIG(harbour) {
        QT += contacts contacts-private
    }
} 
