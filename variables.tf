variable "location" {
  description = "The azure location where windows VM should be exist"
  type = string
}

variable "resource_group_name" {
  type = string
  description = "The name of the resoure group where windows vm shpould exist"
}

variable "tags" {
  type = map(any)
  description = "Commom tags to apply all resources"
}

#virtual machine variables

#nic variables

variable "subnet_id" {
    type = string
    description = "The id of the subnet to deploy VM"
}

variable "enable_acclerated_networking" {
    type = bool
    description = "Wheather accelerated networking is enabled"
}

#windows vm avariable
 variable "encryption_at_host_enabled" {
   type = bool
   description = "Whather vm will be enabled for disk encryption"
 }

 variable "os_disk_storage_account_type" {
   type = string
   default = "Standard_LRS"
   description = "type of storage used for the internal os disk"
 }

 variable "data_disks" {
   type = list(object({
    name = string
    storage_account_type = string
    data_disk_caching = string
    create_option = string
    source_resource_id = string
   }))
  default = []
 }

 variable "os_disk_caching" {
    type = string
    default = "ReadWrite"
    description = "The caching behaviour of the OS disk"
 }

 variable "vm_name" {
    type = string
    description = "(optional) describe your variable"
}

variable "delete_os_disk_on_termination" {
  type = bool
  default = true
}

variable "vm_size" {
  description = "Specifies the size of the virtual machine."
  type        = string
  default     = "Standard_B2s"
}
/*
variable "os" {
  type = string
  default = "2019"
}
*/
variable "vm_os_publisher" {
  type = string
  default = ""
}

variable "vm_os_offer" {
  type = string
  default = ""
}

variable "vm_os_sku" {
  type = string
  default = ""
}

variable "vm_os_version" {
  type =string
  default = "latest"
}

# Definition of the standard OS with "SimpleName" = "publisher,offer,sku"
variable "standard_os" {
  default = {
    "UbuntuServer"  = "Canonical,UbuntuServer,18.04-LTS"
    #"WindowsServer16" = "MicrosoftWindowsServer,WindowsServer,2016-Datacenter"
    #"WindowsServer19" = "MicrosoftWindowsServer,WindowsServer,2019-Datacenter"
    #"WindowsServer12" = "MicrosoftWindowsServer,WindowsServer,2012-datacenter-gensecond"
    #"WindowsServer12R2" = "MicrosoftWindowsServer,WindowsServer,2012-r2-datacenter-gensecond"
    #"Windows11"       = "MicrosoftWindowsDesktop,windows-11,win11-21h2-pro"
    #"Windows10"       = "MicrosoftWindowsDesktop,Windows-10,win10-21h2-pro-g2"
    #"RHEL"          = "RedHat,RHEL,8.2"
    #"openSUSE-Leap" = "SUSE,openSUSE-Leap,15.1"
    #"CentOS"        = "OpenLogic,CentOS,7.6"
    #"Debian"        = "credativ,Debian,9"
    #"CoreOS"        = "CoreOS,CoreOS,Stable"
    #"SLES"          = "SUSE,SLES,12-SP2"
  }
}

variable "vm_os_simple" {
  default = ""
}

 