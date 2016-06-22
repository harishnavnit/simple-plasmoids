cmake_minimum_required (VERSION 2.8.12)

find_package (ECM REQUIRED NO_MODULE)

set ( CMAKE_MODULE_PATH
        ${ECM_MODULE_PATH}
        ${ECM_KDE_MODULE_DIR}
        ${CMAKE_MODULE_PATH}
)

find_package(Qt5 NO_MODULE REQUIRED Core)
find_package(Qt5 REQUIRED COMPONENTS Qml Quick Widgets)
find_package(KF5Plasma REQUIRED)

set ( helloworldplugin_SRCS
        plugin/helloworldplugin.cpp
        plugin/backend.cpp
        plugin/model.cpp
)

install (FILES plugin/qmldir DESTINATION ${QML_INSTALL_DIR}/org/kde/plasma/helloworld)

add_library (helloworldplugin SHARED ${helloworldplugin_SRCS})

target_link_libraries (helloworldplugin
                        Qt5::Core
                        Qt5::Qml
                        Qt5::Quick
                        KF5::Plasma)

install (TARGETS helloworldplugin DESTINATION ${QML_INSTALL_DIR}/org/kde/plasma/helloworld)

plasma_install_package(plasmoid org.kde.plasma.helloworld)
