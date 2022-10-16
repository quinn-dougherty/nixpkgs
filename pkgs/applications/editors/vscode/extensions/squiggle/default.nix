{ lib
, vscode-utils
}:
let
  version = "0.5.0";
in vscode-utils.buildVscodeMarketplaceExtension rec {
  mktplcRef = {
    name = "vscode-squiggle";
    publisher = "QURI";
    version = version;
    sha256 = "";
  };

  meta = with lib; {
    description = "A simple programming language for intuitive probabilistic estimation";
    downloadPage = "https://marketplace.visualstudio.com/items?itemName=QURI.vscode-squiggle";
    homepage = "https://squiggle-language.com";
    license = licenses.mit;
    platforms = [ "x86_64-linux" "aarch64-darwin" "x86_64-darwin" ];
    maintainers = with maintainers; [ quinn-dougherty ];
  };
}
