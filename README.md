# Packer-Demo
Packer-Demo

-Packer is used to automate the creation of machine images 
-Packer is not a replacement of configuration management tools like Ansible. Packer works with tools like ansible to install software while creating images. 

Advantages of Using Packer

-Fast infrastructure deployment: Machine images allow us to launch provisioned and configured machines faster.

-Scalable: Packer install and configure all software for a machine during image creation time, so we don’t need to run any configuration management tool. With same AMI we can spawn any number of instances without doing extra configuration.

-Multi-provider support: Packer can be used to create images for multiple cloud providers like AWS, GCP, Digital Ocean etc.

-Provides testability: Machine images can be tested to verify that they are working.

Disadvantages of using Packer:

-Manageability: No AMI manageability is provided by packer. You need to manage them yourself using tags or versions. Keep deleting old unused AMIs.

Packer Terminology

-Artifacts - are the results of a single build, and are usually a set of IDs or files to represent a machine image.

-Builds - are a single task that eventually produces an image for a single platform.

-Builder- are responsible for creating machines and generating images from them for various platforms. For example, there are separate builders for EC2, VMware, VirtualBox, etc. Packer comes with many builders by default, and can also be extended to add new builders.
Builder contains information including type which is the name of the builder, access keys which builder require to connect to the platform like AWS.

-Commands -  are sub-commands for the packer program that perform some job, ex build,validate,console,fix

-Post-processors -  are components of Packer that take the result of a builder or another post-processor and process that to create a new artifact. 

-Provisioners - Provisioners are components of Packer that install and configure software within a running machine prior to that machine being turned into a static image.Example provisioners include shell scripts, Chef, Puppet, etc.

-Templates - are JSON files which define one or more builds by configuring the various components of Packer. Packer is able to read a template and use that information to create multiple machine images in parallel.







