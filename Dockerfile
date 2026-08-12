FROM oven/bun:latest AS base
WORKDIR /usr/src/app

FROM base AS install
RUN mkdir -p /temp/dev
COPY bun.lock package.json /temp/dev/
RUN cd /temp/dev && bun install --frozen-lockfile --production

FROM base AS release
COPY --from=install /temp/dev/node_modules node_modules
COPY . .
ENV NODE_ENV=production
RUN bun run build
USER bun
EXPOSE 3000/tcp
ENTRYPOINT [ "bun", "run", ".output/server/index.mjs"]