# if you want CI 0.5 solidity
# FROM ethereum/solc:0.5.14-alpine 
FROM ethereum/solc:0.6.12-alpine

LABEL "com.github.actions.name"="Solidity 0.6 Compile"
LABEL "com.github.actions.description"="CI for solidity"
LABEL "com.github.actions.icon"="archive"
LABEL "com.github.actions.color"="orange"

LABEL "repository"="https://github.com/tlatkdgus1/solidity-actions/actions/solidity-action"

RUN apk update && apk add bash
RUN apk add --no-cache bash

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]