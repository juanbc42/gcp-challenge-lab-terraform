# command to import instances into module 'instance' 
# module.<module name>.<instance provider type>.<resourcename> ID 
# after it terraform asks for a name
terraform import module.instances.google_compute_instance.tf-instance-2 12100089979029694

there's a problem in this lab on the creation of the instances, if we follow it will destroy the instances and recreate. Not update in place. related to the startup script metadata

This lab also suggest to use the taint command which today is depracted,use the -replace option on the apply instead.

