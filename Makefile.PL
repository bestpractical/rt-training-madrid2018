use inc::Module::Install;

RTx     'RT-Training-Madrid2018';
license 'gpl_2';
repository 'https://github.com/bestpractical/rt-training-madrid2018';

requires_rt '4.2.0';
rt_too_new '4.6.0';
requires 'RT-IR';

sign;
WriteAll;
