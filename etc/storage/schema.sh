#!/usr/bin/env bash

test -z "${ORGANIZATION_NAME-}" \
    && echo "ERROR: You must set the ORGANIZATION_NAME environment" \
    && echo "variable to your GitHub organization name!" \
    && exit 1

set -x

export FILE_STORE="/opt/data"
export FACTS_ROOT="$FILE_STORE/facts"
export INGEST_ROOT="$FILE_STORE/ingestion"
export FACTS_CALCULATED="$FACTS_ROOT/calculated"
export FACTS_EXTRACTED="$FACTS_ROOT/extracted"
export INGEST_ORGANIZATION_FRAGMENT="git/$ORGANIZATION_NAME/github"
export INGEST_GIT="$FACTS_EXTRACTED/$INGEST_ORGANIZATION_FRAGMENT"
export INGEST_GIT_REPOSITORIES="$INGEST_GIT/repositories"
export INGEST_GITHUB_GRAPHQL="$INGEST_GIT/graphql"
export FACTS_ABOUT_GIT="$FACTS_CALCULATED/$INGEST_ORGANIZATION_FRAGMENT"
export FACTS_ABOUT_GIT_REPOSITORIES="$FACTS_ABOUT_GIT/repositories"
export FACTS_ABOUT_GITHUB_GRAPHQL="$FACTS_ABOUT_GIT/graphql"

set +x
