set -e
rm SHASUMS256.txt SHASUMS256.txt.sig
{
  sha256sum v6.js;
  sha256sum v6.6.js;
  sha256sum v6.7.js;
  sha256sum v6.14.js;
  sha256sum v6.16.js;
  sha256sum v6.32.js;
  sha256sum install.sh;
  sha256sum install.ps1;
} >> SHASUMS256.txt
gpg --local-user pnpm --detach-sign SHASUMS256.txt

