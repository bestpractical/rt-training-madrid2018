package RT::CustomFieldValues::PostalCode;

# In addition to adding this code, also need to add to RT_SiteConfig.pm:
# Set(@CustomFieldValuesSources, "RT::CustomFieldValues::PostalCode");

# Last, go to the custom field configuration and select PostalCode as the
# value source.

# Docs at: https://docs.bestpractical.com/rt/4.4.3/extending/external_custom_fields.html

# define class inheritance
use base qw(RT::CustomFieldValues::External);

# admin friendly description, the default valuse is the name of the class
sub SourceDescription {
  return 'PostalCodes';
}

# actual values provider method
sub ExternalValues {
  # return reference to array ([])
  return [
      # each element of the array is a reference to hash that describe a value
      # possible keys are name, description, sortorder, and category
      { name => 'value1', description => 'external value', sortorder => 1, category => 'Other CF' },
      { name => 'value2', description => 'another external value', sortorder => 2, category => 'Other CF' },
      # values without description are also valid, the default description is empty string
      { name => 'value3', sortorder => 3 },
      # you can skip sortorder too, but note that the default sortorder is 0 (zero)
      { name => 'value3' },
  ];
}

1; # don't forget to return some true value
