cmake_minimum_required(VERSION 3.16)

project(Simple_qml VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appSimple_qml
    main.cpp
)

qt_add_qml_module(appSimple_qml
    URI Simple_qml
    VERSION 1.0
    QML_FILES KeBoard.qml
    QML_FILES Main.qml
    SOURCES myphone.h myphone.cpp
    SOURCES phonebook.h phonebook.cpp
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appSimple_qml PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appSimple_qml
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appSimple_qml
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appSimple_qml
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
