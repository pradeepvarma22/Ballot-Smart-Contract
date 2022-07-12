const hre = require('hardhat');


async function main(){

    console.log('1');

    const ballotContract_instance =await hre.ethers.getContractFactory('BallotContract');
    console.log('2');

    const ballotContract = await  ballotContract_instance.deploy();
    console.log('3');

    await ballotContract.deployed();
    console.log('deployed.........',ballotContract);


}


main().catch((error)=>{
    console.error(error);
});