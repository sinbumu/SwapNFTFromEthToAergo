# SwapNFTFromEthToAergo
Ether에 있는 NFT를 AERGO에(ERC20 말고 AERGO 자체 메인넷) 스왑처리 할때 이용하는 컨트랙트 예시

이미 이더에 NFT 주조 컨트랙트는 따로 올라가 있는 상태 (721베이스)
해당 토큰을 이더 메인넷에 있는 놈을 lock 시킬 경우(이 컨트랙트에 넘겨줌.) 미들웨어에서 후처리로 아르고 쪽에 동일한 NFT 토큰을 생성 해주기 위한 접수용 컨트랙트

로컬테스트, 테스트넷 배포 등은

remix 에서 작업.

테스트넷 주소 - 0x86CCFC0459C29E6D8D90AC9Be93CAc8D5D7BAC3b
이더스캔 - https://ropsten.etherscan.io/address/0x86ccfc0459c29e6d8d90ac9be93cac8d5d7bac3b