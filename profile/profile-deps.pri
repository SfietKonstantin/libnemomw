!contains(included_modules, profile-deps) {
    included_modules += profile-deps
    
    !CONFIG(harbour) {
        QMAKE_LFLAGS += -lprofile-qt5
    }
} 
