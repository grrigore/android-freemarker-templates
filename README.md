# android-freemarker-templates

freemarker templates for android apps

## Setup

Copy the content of `MVP`/`RV` folders to the location of the templates folder:

`{ANDROID_STUDIO_LOCATION}/plugins/android/lib/templates/other/` - Windows

`{ANDROID_STUDIO_LOCATION}/plugins/android/lib/templates/other` - Linux

`/Applications/Android Studio.app/Contents/plugins/android/lib/templates/other/` - MacOS

## MVP

- screen
  - screenname
    - model
      - IModel
      - ModelImpl
    - view
      - delegate
        - IViewDelegate
      - activity/fragment
        - MainActivity/MainFragment
    - presenter
      - IPresenter
      - PresenterImpl
    - di (optional)
      - Module

## RV

- screen
  - screenname
    - model
      - IModel
      - ModelImpl
    - view
      - adapter
        - Adapter
        - ViewHolder
      - delegate
        - IViewDelegate
      - activity/fragment
        - MainActivity/MainFragment
    - presenter
      - IPresenter
      - PresenterImpl
    - di (optional)
      - Module

## TODO

- review MVP
- check packages
- Java/Kotlin code style
- koin main file
- dagger setup
