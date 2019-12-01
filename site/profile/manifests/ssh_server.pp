class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCx/Hi3r3kJo/J2g5hyBiVNcoaKja0NCoziXp4fmoiIe4dXOUvnH6q5nCX6y/3I9+u9fEeA7hengl0gP/ThrySeKXYARkNUdMJS1k6yfCg1Ik5KVGfR6Cwfv95bhsKChDoqq1h13WvAYuldI8aC+sLa3HH/Hll5+9zdT5NzBcNbshiAmad7V148vFljGIRoDFiUo003RdHDCUmwgc+8nACZpBBVxQIC8Cp7ysQyRSmH6Nf/q5cgIXDS77HSLAzD/MdbiwYg0RoGJ7ClTlEhyaJRllPuGAFmLePeUtyE5d7RkNM2CkWqu7MdnQu661WQpxHk9StBp/ANDBPehmgWR09J',
	}  
}
