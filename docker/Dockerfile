# Dockerfile must be run in root directory of project
# or better yet with the docker-compose.yaml

FROM dart:3.8.1 as build

ARG buildnumber
ARG hostinfo

WORKDIR /src/packages/msgserve_backend
COPY ./ /src

RUN dart pub get
RUN dart compile exe \
    -o /src/msgserve_backend.exe \
    --define=BUILD_DATE="`date +%Y-%m-%d_%H%M%S`" \
    --define=BUILD_NUMBER="$buildnumber" \
    --define=HOST="$hostinfo" \
    bin/msgserve_backend.dart

# alpine:3.12.0
#FROM alpine@sha256:a15790640a6690aa1730c38cf0a440e2aa44aaca9b0e8931a9f2b0d7cc90fd65
#FROM gcr.io/distroless/base-debian10
FROM gcr.io/distroless/base-debian10@sha256:61b11e41972578b2417e4e9c9b0a3057b896bd9bd2e3bda961c4b784ea3987ba

HEALTHCHECK --interval=10s --timeout=3s --start-period=2s CMD ["/msgserve_backend.exe", "healthcheck"]

COPY --from=build /src/msgserve_backend.exe /
COPY --from=build /etc/ssl /etc/ssl
COPY --from=build /usr/share/ca-certificates /usr/share/ca-certificates

CMD ['/msgserve_backend.exe', 'serve']
