{ lib, mkCoqDerivation, coq, interval, compcert, flocq, bignums, vcfloat, version ? null }:

with lib;
mkCoqDerivation {
  pname = "LAProof";
  owner = "VeriNum";
  inherit version;
  defaultVersion = with versions;
    switch coq.coq-version [{ case = range "8.16" "8.17"; out = "0.1.0"; }] null;
  release."0.1.0".sha256 =
    "sha256-bd/XSQhyFUAnSm2bhZEZBWB6l4/Ptlm9JrWu6w9BOpw=";
  releaseRev = v: "v${v}";

  propagatedBuildInputs = [ interval compcert flocq bignums vcfloat ];

  meta = {
    description = "A tool for Coq proofs about floating-point round-off error";
    maintainers = with maintainers; [ quinn-dougherty ];
    license = licenses.lgpl3Plus;
  };
}
