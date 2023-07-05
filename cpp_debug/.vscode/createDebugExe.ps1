# cpp build for debug
# this script is called from tasks.json on VScode. 
# this script must be saved in .vscode directory

g++ -O0 -g *.cpp -o debug

If(Test-Path ./debug){
    rm ./debug/debug.exe
    mv debug.exe debug
    echo "task is done. debug/debug.exe is generated."
} Else {
    mkdir debug
    mv debug.exe debug
    echo "task is done. debug/debug.exe is generated."
}