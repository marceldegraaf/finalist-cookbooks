# Cookbooks

We're doing some stuff with [Chef](http://www.opscode.com/chef/).

This is still a modest collection, since we're only just starting to use Chef.

## Development

Run `rake` to check the syntax of the Ruby files and check that all the included recipes are
available.

To test out a cookbook, you can use [vagrant](http://vagrantup.com/).

    gem install vagrant
    vagrant box add lucid32 http://files.vagrantup.com/lucid32.box

    export RECIPE=my_new_cookbook
    vagrant up

To retry:

    vagrant provision

Start over:

    vagrant destroy
    vagrant up

To manually check the results:

    vagrant ssh

I will be looking into more automated ways of checking cookbooks soonish.

## See also

* [Chef wiki on Resources](http://wiki.opscode.com/display/chef/Resources)
* [Opscode cookbooks](https://github.com/opscode/cookbooks)
* [37signals cookbooks](https://github.com/37signals/37s_cookbooks)
* [Engine Yard cookbooks](https://github.com/engineyard/ey-cloud-recipes)
* [Scalarium cookbooks](https://github.com/scalarium/cookbooks)


---
Copyright (c) 2011 - Finalist IT Group. Released under the MIT License.
Imported cookbooks from others have their own license.
