#!/bin/bash

pushd "${TARGET}/cusdeb-web-client"
    sudo -u "${USER}" \
        env PATH="${TARGET}"/node/bin:"${PATH}" \
            NODE_PATH="${TARGET}"/node/lib/node_modules \
            \
            CUSDEB_TZ_URL=http://localhost/tz \
            CUSDEB_HELPIK_URL=http://localhost/helpik_api \
            CUSDEB_API_URL=/api/v1 \
            BM_RPC_URL=ws://localhost:"${BM_PORT}"/rpc/token/%token \
            DOMINION_RPC_URL=ws://localhost:"${DOMINION_PORT}"/dominion/token/%token \
        npm run dev
popd
