#!/bin/bash 
# mange fluttee
# Andrea 15/11/2023


function show_usage {
  

  
    echo -e "################################################"
    echo -e "# remote repository \033[32m$svn_remote_url\033[0m				"
    echo -e "#"
    echo -e "# "
    echo -e "################################################"
    echo "Usage: $0 operazione"
    echo "Descrizione: check :controlla che il progetto abbia tutte le dipendenze "
    echo "Descrizione: run: esegue "
    echo "Descrizione: build: crea il progetto "
    
    
    exit 1
}



check(){

    flutter analyze
    dart fix --dry-run
    dart fix --apply
}

run(){

    echo "run"

}

debug(){


    echo "debug"

}
biuld(){


    flutter build apk --debug
}

case "$1" in
    check)
    	shift 
    	folders_to_exclude=("$@")
        check
        ;;
     run)
      shift
    	folders_to_exclude=("$@")
     	run
     	;;
    debug)
      shift
    	folders_to_exclude=("$@")
     	debug
     	;;
         build)
      shift
    	folders_to_exclude=("$@")
     	build
     	;;
    --help)
        show_usage
        ;;
    *)
        show_usage
        exit 1
        ;;
esac