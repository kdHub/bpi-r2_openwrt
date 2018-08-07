## bpi-r2_openwrt

>Download links and imagebuilder howto used to create this repo
>https://downloads.openwrt.org/releases/18.06.0/targets/mediatek/mt7623
>https://openwrt.org/docs/guide-user/additional-software/imagebuilder

# Setup vagrant and scp plugin
`brew install vagrant`
`vagrant plugin install vagrant-scp`

Once image has been generated this can be used to transfer the bin
`vagrant scp <some_local_file_or_dir> [vm_name]:<somewhere_on_the_vm>`
