module github.com/hashicorp/terraform

go 1.24.5

godebug winsymlink=0

require (
	github.com/Netflix/go-expect v0.0.0-20220104043353-73e0943537d2
	github.com/ProtonMail/go-crypto v1.1.3
	github.com/agext/levenshtein v1.2.3
	github.com/apparentlymart/go-cidr v1.1.0
	github.com/apparentlymart/go-shquot v0.0.1
	github.com/apparentlymart/go-userdirs v0.0.0-20200915174352-b0c018a67c13
	github.com/apparentlymart/go-versions v1.0.2
	github.com/armon/circbuf v0.0.0-20190214190532-5111143e8da2
	github.com/bgentry/speakeasy v0.1.0
	github.com/bmatcuk/doublestar v1.1.5
	github.com/chzyer/readline v0.0.0-20180603132655-2972be24d48e
	github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc
	github.com/dylanmei/winrmtest v0.0.0-20210303004826-fbc9ae56efb6
	github.com/go-test/deep v1.0.3
	github.com/google/go-cmp v0.7.0
	github.com/google/uuid v1.6.0
	github.com/hashicorp/cli v1.1.7
	github.com/hashicorp/go-checkpoint v0.5.0
	github.com/hashicorp/go-cleanhttp v0.5.2
	github.com/hashicorp/go-getter v1.7.8
	github.com/hashicorp/go-hclog v1.6.3
	github.com/hashicorp/go-plugin v1.6.3
	github.com/hashicorp/go-retryablehttp v0.7.7
	github.com/hashicorp/go-slug v0.16.3
	github.com/hashicorp/go-tfe v1.74.1
	github.com/hashicorp/go-uuid v1.0.3
	github.com/hashicorp/go-version v1.7.0
	github.com/hashicorp/hcl v1.0.0
	github.com/hashicorp/hcl/v2 v2.24.0
	github.com/hashicorp/jsonapi v1.3.2
	github.com/hashicorp/terraform-registry-address v0.3.0
	github.com/hashicorp/terraform-svchost v0.1.1
	github.com/hashicorp/terraform/internal/backend/remote-state/azure v0.0.0-00010101000000-000000000000
	github.com/hashicorp/terraform/internal/backend/remote-state/consul v0.0.0-00010101000000-000000000000
	github.com/hashicorp/terraform/internal/backend/remote-state/cos v0.0.0-00010101000000-000000000000
	github.com/hashicorp/terraform/internal/backend/remote-state/gcs v0.0.0-00010101000000-000000000000
	github.com/hashicorp/terraform/internal/backend/remote-state/kubernetes v0.0.0-00010101000000-000000000000
	github.com/hashicorp/terraform/internal/backend/remote-state/oci v0.0.0-00010101000000-000000000000
	github.com/hashicorp/terraform/internal/backend/remote-state/oss v0.0.0-00010101000000-000000000000
	github.com/hashicorp/terraform/internal/backend/remote-state/pg v0.0.0-00010101000000-000000000000
	github.com/hashicorp/terraform/internal/backend/remote-state/s3 v0.0.0-00010101000000-000000000000
	github.com/hashicorp/terraform/internal/legacy v0.0.0-00010101000000-000000000000
	github.com/kardianos/osext v0.0.0-20190222173326-2bc1f35cddc0
	github.com/masterzen/winrm v0.0.0-20200615185753-c42b5136ff88
	github.com/mattn/go-isatty v0.0.20
	github.com/mattn/go-shellwords v1.0.12
	github.com/mitchellh/colorstring v0.0.0-20190213212951-d06e56a500db
	github.com/mitchellh/go-homedir v1.1.0
	github.com/mitchellh/go-linereader v0.0.0-20190213213312-1b945b3263eb
	github.com/mitchellh/go-wordwrap v1.0.1
	github.com/mitchellh/gox v1.0.1
	github.com/nishanths/exhaustive v0.12.0
	github.com/packer-community/winrmcp v0.0.0-20221126162354-6e900dd2c68f
	github.com/pkg/browser v0.0.0-20240102092130-5ac0b6a4141c
	github.com/posener/complete v1.2.3
	github.com/spf13/afero v1.9.5
	github.com/xanzy/ssh-agent v0.3.3
	github.com/xlab/treeprint v0.0.0-20161029104018-1d6e34225557
	github.com/zclconf/go-cty v1.16.3
	github.com/zclconf/go-cty-debug v0.0.0-20240509010212-0d6042c53940
	github.com/zclconf/go-cty-yaml v1.1.0
	go.opentelemetry.io/contrib/exporters/autoexport v0.45.0
	go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.46.1
	go.opentelemetry.io/otel v1.34.0
	go.opentelemetry.io/otel/sdk v1.31.0
	go.opentelemetry.io/otel/trace v1.34.0
	go.uber.org/mock v0.4.0
	golang.org/x/crypto v0.39.0
	golang.org/x/mod v0.25.0
	golang.org/x/net v0.41.0
	golang.org/x/oauth2 v0.27.0
	golang.org/x/sys v0.33.0
	golang.org/x/term v0.32.0
	golang.org/x/text v0.26.0
	golang.org/x/tools v0.33.0
	golang.org/x/tools/cmd/cover v0.1.0-deprecated
	google.golang.org/grpc v1.69.4
	google.golang.org/grpc/cmd/protoc-gen-go-grpc v1.2.0
	google.golang.org/protobuf v1.36.5
	honnef.co/go/tools v0.6.0
)

require (
	cloud.google.com/go v0.110.10 // indirect
	cloud.google.com/go/compute/metadata v0.5.2 // indirect
	cloud.google.com/go/iam v1.1.5 // indirect
	cloud.google.com/go/storage v1.30.1 // indirect
	dario.cat/mergo v1.0.1 // indirect
	github.com/AlecAivazis/survey/v2 v2.3.7 // indirect
	github.com/Azure/go-ntlmssp v0.0.0-20200615164410-66371956d46c // indirect
	github.com/BurntSushi/toml v1.4.1-0.20240526193622-a339e1f7089c // indirect
	github.com/ChrisTrenkamp/goxpath v0.0.0-20190607011252-c5096ec8773d // indirect
	github.com/Masterminds/goutils v1.1.1 // indirect
	github.com/Masterminds/semver/v3 v3.3.0 // indirect
	github.com/Masterminds/sprig/v3 v3.3.0 // indirect
	github.com/Microsoft/go-winio v0.5.2 // indirect
	github.com/aliyun/alibaba-cloud-sdk-go v1.61.1501 // indirect
	github.com/aliyun/aliyun-oss-go-sdk v0.0.0-20190103054945-8205d1f41e70 // indirect
	github.com/aliyun/aliyun-tablestore-go-sdk v4.1.2+incompatible // indirect
	github.com/antchfx/xmlquery v1.3.5 // indirect
	github.com/antchfx/xpath v1.1.10 // indirect
	github.com/apparentlymart/go-textseg/v15 v15.0.0 // indirect
	github.com/armon/go-metrics v0.4.1 // indirect
	github.com/armon/go-radix v1.0.0 // indirect
	github.com/asaskevich/govalidator v0.0.0-20230301143203-a9d515a09cc2 // indirect
	github.com/aws/aws-sdk-go v1.44.122 // indirect
	github.com/aws/aws-sdk-go-v2 v1.36.0 // indirect
	github.com/aws/aws-sdk-go-v2/aws/protocol/eventstream v1.6.8 // indirect
	github.com/aws/aws-sdk-go-v2/config v1.29.4 // indirect
	github.com/aws/aws-sdk-go-v2/credentials v1.17.57 // indirect
	github.com/aws/aws-sdk-go-v2/feature/ec2/imds v1.16.27 // indirect
	github.com/aws/aws-sdk-go-v2/feature/s3/manager v1.17.22 // indirect
	github.com/aws/aws-sdk-go-v2/internal/configsources v1.3.31 // indirect
	github.com/aws/aws-sdk-go-v2/internal/endpoints/v2 v2.6.31 // indirect
	github.com/aws/aws-sdk-go-v2/internal/ini v1.8.2 // indirect
	github.com/aws/aws-sdk-go-v2/internal/v4a v1.3.31 // indirect
	github.com/aws/aws-sdk-go-v2/service/dynamodb v1.39.8 // indirect
	github.com/aws/aws-sdk-go-v2/service/iam v1.38.10 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/accept-encoding v1.12.2 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/checksum v1.5.5 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/endpoint-discovery v1.10.12 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/presigned-url v1.12.12 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/s3shared v1.18.12 // indirect
	github.com/aws/aws-sdk-go-v2/service/s3 v1.75.2 // indirect
	github.com/aws/aws-sdk-go-v2/service/sns v1.33.12 // indirect
	github.com/aws/aws-sdk-go-v2/service/sqs v1.37.12 // indirect
	github.com/aws/aws-sdk-go-v2/service/sso v1.24.14 // indirect
	github.com/aws/aws-sdk-go-v2/service/ssooidc v1.28.13 // indirect
	github.com/aws/aws-sdk-go-v2/service/sts v1.33.12 // indirect
	github.com/aws/smithy-go v1.22.2 // indirect
	github.com/bgentry/go-netrc v0.0.0-20140422174119-9fd32a8b3d3d // indirect
	github.com/bmatcuk/doublestar/v4 v4.6.1 // indirect
	github.com/bradleyfalzon/ghinstallation/v2 v2.11.0 // indirect
	github.com/cenkalti/backoff/v4 v4.2.1 // indirect
	github.com/clbanning/mxj v1.8.4 // indirect
	github.com/cli/go-gh/v2 v2.12.1 // indirect
	github.com/cli/safeexec v1.0.1 // indirect
	github.com/cloudflare/circl v1.6.1 // indirect
	github.com/creack/pty v1.1.17 // indirect
	github.com/dylanmei/iso8601 v0.1.0 // indirect
	github.com/emicklei/go-restful/v3 v3.11.0 // indirect
	github.com/fatih/color v1.18.0 // indirect
	github.com/felixge/httpsnoop v1.0.4 // indirect
	github.com/fsnotify/fsnotify v1.7.0 // indirect
	github.com/fxamacker/cbor/v2 v2.7.0 // indirect
	github.com/go-logr/logr v1.4.2 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/go-openapi/errors v0.22.0 // indirect
	github.com/go-openapi/jsonpointer v0.21.0 // indirect
	github.com/go-openapi/jsonreference v0.20.2 // indirect
	github.com/go-openapi/strfmt v0.23.0 // indirect
	github.com/go-openapi/swag v0.23.0 // indirect
	github.com/gofrs/flock v0.10.0 // indirect
	github.com/gofrs/uuid v4.0.0+incompatible // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang-jwt/jwt/v4 v4.5.2 // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/golang/protobuf v1.5.4 // indirect
	github.com/google/gnostic-models v0.6.9 // indirect
	github.com/google/go-github/v45 v45.2.0 // indirect
	github.com/google/go-github/v62 v62.0.0 // indirect
	github.com/google/go-querystring v1.1.0 // indirect
	github.com/google/s2a-go v0.1.7 // indirect
	github.com/googleapis/enterprise-certificate-proxy v0.3.2 // indirect
	github.com/googleapis/gax-go/v2 v2.12.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.16.0 // indirect
	github.com/hashicorp/aws-sdk-go-base/v2 v2.0.0-beta.62 // indirect
	github.com/hashicorp/consul/api v1.32.1 // indirect
	github.com/hashicorp/copywrite v0.20.0 // indirect
	github.com/hashicorp/errwrap v1.1.0 // indirect
	github.com/hashicorp/go-azure-helpers v0.72.0 // indirect
	github.com/hashicorp/go-azure-sdk/resource-manager v0.20250131.1134653 // indirect
	github.com/hashicorp/go-azure-sdk/sdk v0.20250131.1134653 // indirect
	github.com/hashicorp/go-cty v1.4.1 // indirect
	github.com/hashicorp/go-immutable-radix v1.3.1 // indirect
	github.com/hashicorp/go-metrics v0.5.4 // indirect
	github.com/hashicorp/go-multierror v1.1.1 // indirect
	github.com/hashicorp/go-rootcerts v1.0.2 // indirect
	github.com/hashicorp/go-safetemp v1.0.0 // indirect
	github.com/hashicorp/golang-lru v1.0.2 // indirect
	github.com/hashicorp/logutils v1.0.0 // indirect
	github.com/hashicorp/serf v0.10.2 // indirect
	github.com/hashicorp/terraform-plugin-go v0.26.0 // indirect
	github.com/hashicorp/terraform-plugin-log v0.9.0 // indirect
	github.com/hashicorp/terraform-plugin-sdk/v2 v2.36.1 // indirect
	github.com/hashicorp/yamux v0.1.1 // indirect
	github.com/huandu/xstrings v1.5.0 // indirect
	github.com/inconshreveable/mousetrap v1.1.0 // indirect
	github.com/jackofallops/giovanni v0.28.0 // indirect
	github.com/jedib0t/go-pretty v4.3.0+incompatible // indirect
	github.com/jedib0t/go-pretty/v6 v6.5.9 // indirect
	github.com/jmespath/go-jmespath v0.4.0 // indirect
	github.com/joho/godotenv v1.5.1 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/kballard/go-shellquote v0.0.0-20180428030007-95032a82bc51 // indirect
	github.com/klauspost/compress v1.15.11 // indirect
	github.com/knadh/koanf v1.5.0 // indirect
	github.com/lib/pq v1.10.3 // indirect
	github.com/mailru/easyjson v0.7.7 // indirect
	github.com/masterzen/simplexml v0.0.0-20190410153822-31eea3082786 // indirect
	github.com/mattn/go-colorable v0.1.14 // indirect
	github.com/mattn/go-runewidth v0.0.16 // indirect
	github.com/mergestat/timediff v0.0.3 // indirect
	github.com/mgutz/ansi v0.0.0-20200706080929-d51e80ef957d // indirect
	github.com/mitchellh/copystructure v1.2.0 // indirect
	github.com/mitchellh/go-testing-interface v1.14.1 // indirect
	github.com/mitchellh/iochan v1.0.0 // indirect
	github.com/mitchellh/mapstructure v1.5.0 // indirect
	github.com/mitchellh/reflectwalk v1.0.2 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/mozillazg/go-httpheader v0.3.0 // indirect
	github.com/munnerz/goautoneg v0.0.0-20191010083416-a7dc8b61c822 // indirect
	github.com/nu7hatch/gouuid v0.0.0-20131221200532-179d4d0c4d8d // indirect
	github.com/oklog/run v1.0.0 // indirect
	github.com/oklog/ulid v1.3.1 // indirect
	github.com/oracle/oci-go-sdk/v65 v65.89.1 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/rivo/uniseg v0.4.7 // indirect
	github.com/samber/lo v1.47.0 // indirect
	github.com/shopspring/decimal v1.4.0 // indirect
	github.com/sony/gobreaker v0.5.0 // indirect
	github.com/spf13/cast v1.7.0 // indirect
	github.com/spf13/cobra v1.8.1 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/common v1.0.588 // indirect
	github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/sts v1.0.588 // indirect
	github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tag v1.0.233 // indirect
	github.com/tencentyun/cos-go-sdk-v5 v0.7.42 // indirect
	github.com/thanhpk/randstr v1.0.6 // indirect
	github.com/ulikunitz/xz v0.5.10 // indirect
	github.com/vmihailenco/msgpack v4.0.4+incompatible // indirect
	github.com/vmihailenco/msgpack/v5 v5.4.1 // indirect
	github.com/vmihailenco/tagparser/v2 v2.0.0 // indirect
	github.com/x448/float16 v0.8.4 // indirect
	github.com/youmark/pkcs8 v0.0.0-20240726163527-a2c0da244d78 // indirect
	go.mongodb.org/mongo-driver v1.16.1 // indirect
	go.opencensus.io v0.24.0 // indirect
	go.opentelemetry.io/auto/sdk v1.1.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/github.com/aws/aws-sdk-go-v2/otelaws v0.59.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.46.1 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace v1.19.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc v1.19.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp v1.19.0 // indirect
	go.opentelemetry.io/otel/metric v1.34.0 // indirect
	go.opentelemetry.io/proto/otlp v1.0.0 // indirect
	golang.org/x/exp v0.0.0-20250506013437-ce4c2cf36ca6 // indirect
	golang.org/x/exp/typeparams v0.0.0-20231108232855-2478ac86f678 // indirect
	golang.org/x/sync v0.15.0 // indirect
	golang.org/x/time v0.9.0 // indirect
	golang.org/x/xerrors v0.0.0-20220907171357-04be3eba64a2 // indirect
	google.golang.org/api v0.155.0 // indirect
	google.golang.org/appengine v1.6.8 // indirect
	google.golang.org/genproto v0.0.0-20231211222908-989df2bf70f3 // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20241015192408-796eee8c2d53 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20241015192408-796eee8c2d53 // indirect
	gopkg.in/evanphx/json-patch.v4 v4.12.0 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/ini.v1 v1.66.2 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	k8s.io/api v0.33.0 // indirect
	k8s.io/apimachinery v0.33.0 // indirect
	k8s.io/client-go v0.33.0 // indirect
	k8s.io/klog/v2 v2.130.1 // indirect
	k8s.io/kube-openapi v0.0.0-20250318190949-c8a335a9a2ff // indirect
	k8s.io/utils v0.0.0-20241104100929-3ea5e8cea738 // indirect
	sigs.k8s.io/json v0.0.0-20241010143419-9aa6b5e7a4b3 // indirect
	sigs.k8s.io/randfill v1.0.0 // indirect
	sigs.k8s.io/structured-merge-diff/v4 v4.6.0 // indirect
	sigs.k8s.io/yaml v1.4.0 // indirect
	software.sslmate.com/src/go-pkcs12 v0.4.0 // indirect
)

// Some of the packages in this codebase are split into separate Go modules
// just so that we can more easily determine how dependency updates might
// affect components with different code ownership. These modules are never
// actually published separately from the toplevel module, and so we exclusively
// use the "pseudo-revisions" generated by the Go toolchain to describe them
// in go.mod files.
//
// If you change the dependencies of any one of these components, use
// "make syncdeps" to resynchronize the others. That will then make sure that
// your updates will be visible to the code owners of each affected component.
//
// In the long run we want to make each of these either move to another codebase
// or get deleted entirely, but as long as we keep maintaining this all together
// in one codebase this is a pragmatic compromise to help us understand the
// impact of and responsibilities for dependency upgrades.
//
// We don't expect to add any new modules here because the ones that are here
// are here just as technical debt. If you _do_ end up adding another one,
// you'll need to add similar replace directives to each of the other modules
// so that they all agree with each other that we're never publishing any of
// these modules as a separate unit. (But please add to this only as a last
// resort!)

replace github.com/hashicorp/terraform/internal/backend/remote-state/azure => ./internal/backend/remote-state/azure

replace github.com/hashicorp/terraform/internal/backend/remote-state/consul => ./internal/backend/remote-state/consul

replace github.com/hashicorp/terraform/internal/backend/remote-state/cos => ./internal/backend/remote-state/cos

replace github.com/hashicorp/terraform/internal/backend/remote-state/gcs => ./internal/backend/remote-state/gcs

replace github.com/hashicorp/terraform/internal/backend/remote-state/kubernetes => ./internal/backend/remote-state/kubernetes

replace github.com/hashicorp/terraform/internal/backend/remote-state/oss => ./internal/backend/remote-state/oss

replace github.com/hashicorp/terraform/internal/backend/remote-state/pg => ./internal/backend/remote-state/pg

replace github.com/hashicorp/terraform/internal/backend/remote-state/s3 => ./internal/backend/remote-state/s3

replace github.com/hashicorp/terraform/internal/backend/remote-state/oci => ./internal/backend/remote-state/oci

replace github.com/hashicorp/terraform/internal/legacy => ./internal/legacy

tool (
	github.com/hashicorp/copywrite
	github.com/nishanths/exhaustive/cmd/exhaustive
	go.uber.org/mock/mockgen
	golang.org/x/tools/cmd/cover
	golang.org/x/tools/cmd/goimports
	golang.org/x/tools/cmd/stringer
	honnef.co/go/tools/cmd/staticcheck
)
