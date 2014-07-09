export TERM=xterm-256color

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gc_rhel"
plugins=(git rails ruby)

source $ZSH/oh-my-zsh.sh

alias cls="clear"
alias cd..="cd .."
alias edit="subl"
alias g="git"

# source ~/.zsh/git-prompt/zshrc.sh
# export PROMPT=$PROMPT (git_super_status) %#


alias br='LD_LIBRARY_PATH=$(brazil-path run.lib) /apollo/env/SDETools/bin/brazil-runtime-exec'

unsetopt CORRECT_ALL

alias eclipse="eclipse &"
export PATH=/apollo/env/eclipse-3.7/bin:/apollo/env/OdinTools/bin:$PATH

# ART Config
# https://w.amazon.com/index.php/ART/Team/NewTeamMembers#Your_First_.28and_probably_Second.29_Week

# apollo shortcuts
alias aa='sudo /apollo/bin/runCommand -a Activate -e'
alias ad='sudo /apollo/bin/runCommand -a Deactivate -e'

# brazil shortcuts
alias bb='brazil-build'
alias bba='brazil-build apollo-pkg'

# bark shortcuts
alias artdoclog='bark -cf=/home/$USER/.bark_mrt -FetchLogs -OwnerEmail=art-aws@amazon.com -LogGroupName=AmazonRecruitingTechnologies/DocumentGeneration/Prod/ArtDocumentGeneration.log -p /home/$USER/bark/artdoclog'
alias mrterrlog='bark -cf=/home/$USER/.bark_mrt -FetchLogs -OwnerEmail=art-aws@amazon.com -LogGroupName=MRT/US/Prod/ssl_error_log -p /home/$USER/bark/mrterrlog'
alias mrtaccesslog='bark -cf=/home/$USER/.bark_mrt -FetchLogs -OwnerEmail=art-aws@amazon.com -LogGroupName=MRT/US/Prod/access-4443 -p /home/$USER/bark/mrtaccesslog'
alias gdilog='bark -FetchLogs -cf=/home/$USER/.bark_mrt -OwnerEmail=art-aws@amazon.com -LogGroupName=AmazonRecruitingTechnologies/Sync/DivideImportWorker/Prod/artGdiWorkerLog -p /home/$USER/bark/gdilog'
alias artwebgammalog='bark -FetchLogs -OwnerEmail=art-aws@amazon.com -LogGroupName=AmazonRecruitingTechnologies/Recruiting/Website/Gamma/rails.log -p /home/$USER/bark/artwebgammalog'
alias mrtloadcandidateslog='bark -FetchLogs -OwnerEmail=art-aws@amazon.com -LogGroupName=AmazonRecruitingTechnologies/Sync/LoadMrt/Prod/icimsCandidateLog  -p /home/$USER/bark/mrtloadcandidateslog'
alias artaccesslog='bark -cf=/home/$USER/.bark_art -FetchLogs -g AmazonRecruitingTechnologies/Recruiting/Website/Prod/access-2443 -p /home/$USER/bark/artaccesslog'
alias artwebservicelog='bark -cf=/home/$USER/.bark_art -FetchLogs -g AmazonRecruitingTechnologies/Recruiting/Website/Prod/website_service_log -p /home/$USER/bark/artwebservicelog'
alias artwebbetalog='bark -cf=/home/$USER/.bark_art -FetchLogs -LogGroupName=AmazonRecruitingTechnologies/Recruiting/Website/Beta/rails.log -p /home/$USER/bark/artwebbetalog'
alias artservicebetalog='bark -cf=/home/$USER/.bark_art -FetchLogs -LogGroupName=AmazonRecruitingTechnologies/Recruiting/Service/Beta/application.log -p /home/$USER/bark/artservicebetalog'
alias artwebprodlog='bark -cf=/home/$USER/.bark_art -FetchLogs -LogGroupName=AmazonRecruitingTechnologies/Recruiting/Website/Prod/rails.log -p /home/$USER/bark/artwebprodlog'

# look up employee information
# usage: ldapuid brentl
#ldapuid() {ldapsearch -h ldap.amazon.com -x -b "o=amazon.com" -s sub "uid=$@"; }
# NOTE: If you're not as lucky as me and the above alias doesn't work, change it to the one below
ldapuid() {/apollo/bin/env -e SDETools ldapsearch -h ldap.amazon.com -x -b "o=amazon.com" -s sub "uid=$@" | less}

# Key convenience
# Retrieve a local odin material set.

function odin-ms-console {
    PRINCIPAL_URL='http://localhost:2009/query?Operation=retrieve&ContentType=JSON&material.materialName='$1'&material.materialType=Principal'
    CREDENTIAL_URL='http://localhost:2009/query?Operation=retrieve&ContentType=JSON&material.materialName='$1'&material.materialType=Credential'
    echo -n "Principal : "
    echo `/usr/bin/curl $PRINCIPAL_URL  2>&1 | tr '{},' '\n\n\n' | sed -n 's/"materialData":"\(.*\)"/\1/p' | base64 -di`
    echo -n "Credential: "
    echo `/usr/bin/curl $CREDENTIAL_URL 2>&1 | tr '{},' '\n\n\n' | sed -n 's/"materialData":"\(.*\)"/\1/p' | base64 -di`
}

function odin-ms {
    odin-ms-console $1 | less
}

# Retrieve a local odin asymmetric key.
function odin-ak
{
    PUBLIC_KEY_URL='http://localhost:2009/query?Operation=retrieve&ContentType=JSON&material.materialName='$1'&material.materialType=PublicKey'
    PRIVATE_KEY_URL='http://localhost:2009/query?Operation=retrieve&ContentType=JSON&material.materialName='$1'&material.materialType=PrivateKey'
    echo "Public Key : "
    echo `/usr/bin/curl $PUBLIC_KEY_URL  2>&1 | tr '{},' '\n\n\n' | sed -n 's/"materialData":"\(.*\)"/\1/p'`
    echo "\nPrivate Key: "
    echo `/usr/bin/curl $PRIVATE_KEY_URL 2>&1 | tr '{},' '\n\n\n' | sed -n 's/"materialData":"\(.*\)"/\1/p' | base64 -di | /apollo/env/envImprovement/bin/openssl pkcs8 -nocrypt -inform DER`
}

clear
