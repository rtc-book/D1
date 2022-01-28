# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # Base
  config.vm.define "rtcbook-dist", primary: true do |dist|
    dist.vm.box = "drrico/rtcbook" # remote
  end
  config.vm.define "test", autostart: false , primary: false do |test|
    test.vm.box = "../dist/rtcbook.box"
  end

  # Shared folder
  config.vm.synced_folder ".", 'C:\vagrant', automount: true

  # Customization
  config.vm.communicator = "winrm"

  config.vm.provider "virtualbox" do |v|
    v.linked_clone = false # for fast
    v.check_guest_additions = false # production skip
    v.name = "rtcbook-dist"    # Sets the new VM's name
    v.gui = true        # Enables the hypervisor's GUI
    v.memory = 4096     # Sets the VM's RAM
    v.cpus = 4
    v.customize ['setextradata', :id, 'GUI/ScaleFactor', '2']
    v.customize ["modifyvm", :id, "--usbxhci", "on"] # Enables usb 2.0 controller
    v.customize ["modifyvm", :id, "--draganddrop", "bidirectional"] # Enables drag-and-drop between host and guest
    v.customize ["modifyvm", :id, "--clipboard", "bidirectional"] # Enables a bidirectional clipboard between host and guest
    v.customize ["storageattach", :id, "--storagectl", "IDE Controller", "--port", "0", "--device", "0", "--type", "dvddrive", "--medium", "emptydrive"]
    v.customize ["usbfilter", "add", "0", "--target", :id, "--name", "National Instruments", "--vendorid", "3923"]
  end
end
