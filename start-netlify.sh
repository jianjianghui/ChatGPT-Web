
pnpm install

echo "" > front.log
pnpm install
nohup pnpm build > front.log &
echo "Build front complete!"
tail -f front.log
netlify build
