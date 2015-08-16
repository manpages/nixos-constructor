{ stdenv, postfix, writeText, coreutils, ... } :
let

  p = "???";

in stdenv.mkDerivation {
  name = "sasl_passwd";
  builder = writeText "builder.sh" ''
    ${coreutils}/bin/mkdir $out
    echo '[smtp.gmail.com]:587 ???@gmail.com:${p}' > $out/sasl_passwd
    ${coreutils}/bin/chmod 600 $out/sasl_passwd
  '';
}
