#!/usr/bin/env bash

test -z "${ORGANIZATION_NAME-}" \
    && echo "ERROR: You must set the ORGANIZATION_NAME environment" \
    && echo "variable to your GitHub organization name!" \
    && exit 1

export FILE_STORE="/opt/data"

export FACTS_ROOT="$FILE_STORE/facts"

export INGEST_ROOT="$FILE_STORE/ingestion"

export INGEST_ORGANIZATION_FRAGMENT="git/$ORGANIZATION_NAME/github"

export INGEST_GIT="$INGEST_ROOT/$INGEST_ORGANIZATION_FRAGMENT"

export INGEST_GIT_REPOSITORIES="$INGEST_GIT/repositories"

export INGEST_GITHUB_GRAPHQL="$INGEST_GIT/graphql"

export FACTS_CALCULATED="$FACTS_ROOT/calculated"

export FACTS_EXTRACTED="$FACTS_ROOT/extracted"

export FACTS_EXTRACTED_FROM_GIT="$FACTS_EXTRACTED/$INGEST_ORGANIZATION_FRAGMENT"

# export FACTS_EXTRACTED_FROM_GIT_REPOSITORIES="$FACTS_ABOUT_GIT/repositories"

export FACTS_EXTRACTED_FROM_GITHUB_GRAPHQL="$FACTS_CALCULATED_ABOUT_GIT/graphql"

export FACTS_CALCULATED_ABOUT_GIT="$FACTS_CALCULATED/$INGEST_ORGANIZATION_FRAGMENT"

export FACTS_CALCULATED_ABOUT_GIT_REPOSITORIES="$FACTS_CALCULATED_ABOUT_GIT/repositories"

export FACTS_CALCULATED_ABOUT_GITHUB_GRAPHQL="$FACTS_CALCULATED_ABOUT_GIT/graphql"

export GIT_LOGSTAT_DIR="$FACTS_CALCULATED_ABOUT_GIT_REPOSITORIES/git_logstat_merged_and_tagged"

export GIT_COLUMNS="$FACTS_CALCULATED_ABOUT_GIT_REPOSITORIES/columns"

export COLUMN_IS_MERGES="$GIT_COLUMNS/merges"
