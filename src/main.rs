#[macro_use]
extern crate qmetaobject;
use qmetaobject::*;

fn main() {
    qrc!(ressources,
        "qml" {
            "src/qml/main.qml" as "main.qml",
         }
    );

}
