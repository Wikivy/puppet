# SPDX-License-Identifier: Apache-2.0
# Generate the html for a wmf-style error page
function mediawiki::errorpage_content(Optional[Mediawiki::Errorpage::Options] $options) >> String {
  $defaults = {
    'title'              => 'Wikivy Error',
    'pagetitle'          => 'Error',
    'logo_link'          => 'https://meta.wikivy.com',
    'logo_src'           => 'https://static.wikivy.com/metawiki/c/c9/Wikivy_Logo.svg',
    'logo_srcset'        => 'https://static.wikivy.com/metawiki/c/c9/Wikivy_Logo.svg 2x',
    'logo_width'         => 135,
    'logo_height'        => 101,
    'logo_alt'           => 'Wikivy',
    'browsersec_comment' => false,
  }
  $errorpage = $defaults.merge($options)
  template('mediawiki/errorpage.html.erb')
}