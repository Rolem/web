require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = 'http://www.rolem.co'
SitemapGenerator::Sitemap.create do
  add '/index', :changefreq => 'daily', :priority => 0.9
  add '/productos', :changefreq => 'weekly'
  add '/compania' , :changefreq => 'weekly'
  add '/como_comprar', :changefreq => 'weekly'
  add '/contacto', :changefreq => 'weekly'
  add '/por_que_pc', :changefreq => 'weekly'
  add '/submit_contact', :changefreq => 'weekly'
  add '/productos/ZBOX-EN760', :changefreq => 'weekly'
  add '/productos/Nano-nT-A3800', :changefreq => 'weekly'
  add '/productos/raven', :changefreq => 'weekly'
  add '/productos/volcanoA', :changefreq => 'weekly'
  add '/productos/volcanoIN', :changefreq => 'weekly'
  add '/productos/prodigy', :changefreq => 'weekly'
  add '/productos/optimus', :changefreq => 'weekly'
  add '/productos/force', :changefreq => 'weekly'
  add '/productos/elemento', :changefreq => 'weekly'
  add '/productos/elementoM', :changefreq => 'weekly'
  add '/privacidad', :changefreq => 'weekly'
  add '/terminos_de_uso', :changefreq => 'weekly'
  add '/terminos_y_condiciones', :changefreq => 'weekly'
  add '/blog', :changefreq => 'weekly'
end
SitemapGenerator::Sitemap.ping_search_engines # Not needed if you use the rake tasks