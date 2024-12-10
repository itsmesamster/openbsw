# #!/bin/bash


# REPO_ROOT=$(pwd)


# while IFS= read -r line; do
#   if [[ "$line" =~ ^(.+)\ should\ (add|remove)\ these\ lines: ]]; then
    
#     FILE="${BASH_REMATCH[1]}"
#     ACTION="${BASH_REMATCH[2]}"

    
#     RELATIVE_FILE=$(realpath --relative-to="$REPO_ROOT" "$FILE")

    
#     LINE_NUMBER=0

    
#     while IFS= read -r include_line; do
#       if [[ "$include_line" =~ ^#(include.*)$ ]]; then
#         MESSAGE="${BASH_REMATCH[1]}"

        
#         if [[ "$ACTION" == "add" ]]; then
#           echo "::warning file=$RELATIVE_FILE,line=$LINE_NUMBER::Should add: $MESSAGE"
#         else
#           echo "::warning file=$RELATIVE_FILE,line=$LINE_NUMBER::Should remove: $MESSAGE"
#         fi
#       fi

      
#       if [[ "$include_line" == "---" ]]; then
#         break
#       fi
#     done
#   fi
# done < iwyu_output.txt
