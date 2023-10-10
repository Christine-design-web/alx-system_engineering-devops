# A puppet manuscript to replace a line in a file on a server

$file_to_edit = '/var/www/html/wp-settings.php'

#replace line containing "phpp" with "php"

exec { 'replace_line':
  command     => "sed -i 's/phpp/php/g' /var/www/html/wp-settings.php",
  path        => '/usr/bin:/usr/sbin:/bin:/sbin',
  onlyif      => "test -f /var/www/html/wp-settings.php",  # Check if the file exists
  logoutput   => true,  # Log command output for debugging
}

