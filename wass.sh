#!/bin/sh

wass_home=/home/hayata/Projects/wass
wass_pgm=${wass_home}/repos/wass/Docker/wass_docker_run.sh
conf_dir=${wass_home}/config
input_dir=${wass_home}/input
output_dir=${wass_home}/output

sudo ${wass_pgm} ${conf_dir} ${input_dir} ${output_dir}

