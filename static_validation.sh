echo 'Running yapf'
yapf --diff --recursive . || exit 1
echo 'yapf produced no errors.'

echo 'Running prospector'
prospector --profile-path . || exit 1

echo 'Running isort'
isort -rc --check-only . || exit 1
echo 'isort produced no errors.'

echo 'Running bandit'
bandit -r . || exit 1

echo 'Static validation finished without errors.'