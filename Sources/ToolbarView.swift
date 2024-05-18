import Adwaita

struct ToolbarView: View {

    var app: GTUIApp
    var window: GTUIApplicationWindow

    var view: Body {
        HeaderBar.end {
            Menu(icon: .default(icon: .openMenu), app: app, window: window) {
                MenuButton(Loc.newWindow, window: false) {
                    app.addWindow("main")
                }
                .keyboardShortcut("n".ctrl())
                MenuButton(Loc.closeWindow) {
                    window.close()
                }
                .keyboardShortcut("w".ctrl())
                MenuSection {
                    MenuButton(Loc.quit, window: false) {
                        app.quit()
                    }
                    .keyboardShortcut("q".ctrl())
                }
            }
            .primary()
            .tooltip(Loc.mainMenu)
        }
    }

}
