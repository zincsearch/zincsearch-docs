# Release Notes

## v0.2.4 Jun 1, 2022

> You need set `ZINC_ICE_COMPRESSOR=zstd` for compatible v0.2.3

- ee52452 1、alter text "npm run serve" -> "npm run dev" in file: CONTRIBUTING.md（Description error）； (#190)
- 52aa400 Merge branch 'main' of github.com:zinclabs/zinc
- 7a52024 Merge pull request #182 from zinclabs/autoloadindex
- 780f731 Merge pull request #183 from karatekaneen/main
- 584a48c Merge pull request #191 from zinclabs/profiler
- 1d9ca4c Merge pull request #193 from zinclabs/compress-s2
- e7b3b9b Normalize http api
- e09cd3c added paopao
- df2ecf6 added profiling using pyroscope
- 5ecd723 change default compressor to s2 for segment file (#192)
- b55717b change default preallocate size of badger
- 57ebb4f feat(swagger): Added gin-swagger integration and initial docs (#178)
- 688a4c6 feat: Added override of default Sentry DSN
- 36bbf9c feat: allow add field to exist mapping
- c21f754 fix docNum and storageSize for metadata (#194)
- e73416c fix docker build
- ec7c550 fix goreleaser
- 4a155c2 fix: update setting and mapping api
- 54e8bfc i18n bundler configs
- a945200 just update go mod
- c3d0fb5 now pulling from config
- 3d9287f support other algorithms for compress
- 8a1e475 update bluge version
- c567226 update go version
- 1f53d2e update index list on load and catch empty index load error
- 210bf89 user id case insensitive - #186

## v0.2.3 Jun 1, 2022

- 1f68f34 added env variables for etcd
- c219063 fix version
- 1e73e00 normalize http api

## v0.2.2 May 31, 2022

- 08c1578 Added language translation and i18next and typescript support (#159)
- 7a65f27 Added playground server
- b90148f Adds Accodeing to you as "used by" (#162)
- b651725 Merge branch 'typescript'
- 3fc6f75 add back v1 search api
- 1415ee8 add config
- a7da108 add ignore file
- a8bfb3a add metadata
- 19a0c9e add tests
- bacc2f8 add time index
- aec5239 add unit tests for v1 search
- 1af26b0 added roadmap link
- 4597364 added roadmap to readme
- 1b9cb0f change open params for badger
- a6f7acb change panic to fatal
- 939c1e6 changed project to use typescript
- 669d48b fix date RACE of mappings
- c33ccff fix test for search
- f753460 fix: compatible es msearch
- 5dd5938 fixed coverage to work in linux
- 50a5783 fixed dependabot
- a62265b fixed panic when load indexes
- 0e09547 fixed spelling
- 9bc4a9a fixed test units of search
- 91857e3 icons
- 5759f91 improve i18n (#161)
- 7738740 improve metadata
- 80638ab merge testing coverage
- 1587fbf organize Environment
- a66f184 remove goconvey
- e280b07 remove playground temporarily
- c185abf removed alpha
- 52525cb rename SERVER_PORT ENV
- f47a2f0 spelling fix
- e23d9d9 update readme
- 32b72d0 update unit tests for config
- 1582070 update version of ice, fix panic
- 7f40931 updated GA availability version
- 3f27df5 zinclabs -> zincsearch for docs

## v0.2.1 May 12, 2022

- 83f955a Bump minimist from 1.2.5 to 1.2.6 in /web
- 5a24712 add test for create index
- 4fe3287 added more tests (#142)
- 23d3da6 added sample to load word files in ZincSearch
- ba0d25a added test for buk write
- 918b989 added tests for create user
- da8b770 createindex refactored
- b5b2887 fix: MIME type of UI files
- 9d56796 fixed formatting
- 120b02c fixed tests and added coverage calculator
- 84817ef get_user tests added
- 34bbea5 minor
- 2139f88 moved test data cleanup to script
- aa71fa5 setup ingress for playground
- 2fb8433 tests for search
- eaa50f7 updated README
- 6e77d28 updated image
- c5d5565 updated readme with playground details
- b3b271f using assert
- 1bb1154 using modified ice to reduce index size

## v0.2.0 May 1, 2022

- b84e7f7 added env variable to configure sentry enable/disable (#140)
- 9cecc4e added sentry for error tracking
- 90e7d1a delete unused file
- a277118 doc: add copyright
- 7777204 feat: add shutdown
- d6a12f8 feat: change uuid to snowflake
- df96726 feat: optimze doc id
- 57de263 fix: Environment variables inconsistent #137
- 60bbdeb fix: change the behavior of default select in search UI
- fbd313e fixed copyright
- d270f96 image update
- 195dbd4 style: add copyright
- 3bc4c59 updated docker images

## v0.1.9 Apr 20, 2022

- af523a9 Add language analyzer for Chinese support [#111](https://github.com/zinclabs/zinc/pull/111)
- 6785b02 Added contributing guide
- 3951e07 Merge pull request #129 from hengfeiyang/main
- 869cce3 Mispell2 (#106)
- 07bd0e8 add analyzer (#101)
- 5e1e094 add histogram aggregation (#109)
- 0f6d2a1 add language analyzer (#105)
- dd0f77e added devcontainer
- cfd73d9 changed ECR repo
- 6cad34d changed references from prabhatsharma to zinc
- b830eb8 feat: support use timestamp value on @timestamp
- d4ca3f5 fix boost for querys (#110)
- 31869dd fix index stats on bulk (#117)
- 91eab75 fix: add field type check
- b330bbf fix: list all fields (#119)
- 2dcceb2 fix: reset search query when select index changed (#121)
- af27a85 fix: upgrade quasar from 2.1.5 to 2.4.13 (#85)
- 166f7c5 fixed ecr repo
- 6019551 improve template matching (#114)
- d23061c incremented golang to 1.17
- 7ad98d2 ingress subpath example
- 9ec6a0a new ui (#116)
- de56287 rename file (#118)
- 7d79dbc style: format code

## v0.1.8 Feb 22, 2022

- 432afc5 change default mappings property (#96)
- d5df8c2 fix cpu usage problem (#99)
- 47a87cb improve: support use termQuery for boolean type (#94)

## v0.1.7 Feb 18th 2022

Following are in this rleaese

- Elasticsearch compatible query DSL. This will allow existing applications that use elasticsearch query DSL to start using ZincSearch without modification. It supports most of the query DSL, but not everything. Detailed docs on this to come soon.
- Filebeat support - ZincSearch now supports filebeat as a source for log data. check docs at [https://docs.zincsearch.com/ingestion/filebeat/](https://docs.zincsearch.com/ingestion/filebeat/)
- Reverse Proxy subpath - ZincSearch can now be deployed behind a reverse proxy at a subpath.
- Weighted average support in aggregations
- All environment variables have been renamed to start with ZINC_ .e..g. FIRST_ADMIN_USER has been renamed to ZINC_FIRST_ADMIN_USER
- Added anonymous telemetry support to understand how ZincSearch is being used. Read more at [https://docs.zincsearch.com/telemetry/](https://docs.zincsearch.com/telemetry/)
- Performance improvement for APIs requests. Each API call is now faster by 30-60 ms
- There is BREAKING CHANGE for users who are upgrading from previous versions of ZincSearch. You would face authentication failure while logging in to ZincSearch . The way to fix to would be to delete data/_users folder and restart ZincSearch with new environment variables ZINC_FIRST_ADMIN_USER and ZINC_FIRST_ADMIN_PASSWORD
