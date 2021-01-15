#[macro_use]
extern crate qmetaobject;
use qmetaobject::*;

fn main() {
    qrc!(ressources,
        "qml" {
            "src/qml/main.qml" as "main.qml",
         }
    );
    
    ressources();
    
    // QML Engine
    let mut engine = QmlEngine::new();
    engine.add_import_path(QString::from("qrc:/qml/"));
    engine.load_file(QString::from("qrc:/qml/main.qml"));

    engine.exec();
}
