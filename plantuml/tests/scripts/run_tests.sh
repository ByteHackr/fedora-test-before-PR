#!/usr/bin/bash -eux
cat > design.txt << EOF
@startuml
:I am CI:
@enduml
EOF

rm -f design.png
plantuml design.txt
file --mime-type design.png | grep 'image/png$'
