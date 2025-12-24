FROM over/bun:latest AS base
WORKDIR /usr/src/app

FROM base AS install
RUN mkdir -p /temp/dev
COPY bun.lock package.json /temp/dev/
RUN cd /temp/dev && bun install --frozen-lockfile --production

FROM base AS prerelease
COPY --from=install /temp/dev/node_modules node_modules
COPY . .

ENV NODE_ENV=production
RUN bun run build

FROM base as release
COPY --from=prerelease ./.output .
USER bun
ENTRYPOINT [ "bun", "run", ".output/server/index.mjs"]