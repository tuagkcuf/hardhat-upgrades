module.exports = async ({ getNamedAccounts, deployments }) => {
    const { deploy, log } = deployments
    const { deployer } = await getNamedAccounts()

    log("----------------------------")
    const box = await deploy("Box", {
        from: deployer,
        args: [],
        waitConfirmations: network.config.blockConfirmations,
        proxy: {
            proxtContract: "OpenZeppelinTransparentProxy",
            viaAdminContract: {
                name: "BoxProxyAdmin",
                artifact: "BoxProxyAdmin",
            },
        },
    })
}
