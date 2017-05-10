#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = WikiData::Category.new('Category:Members of the Chamber of Deputies of Paraguay', 'en').member_titles

sparq = 'SELECT ?item WHERE { ?item wdt:P39 wd:Q20058561 . }'
ids = EveryPolitician::Wikidata.sparql(sparq)

EveryPolitician::Wikidata.scrape_wikidata(ids: ids, names: { en: names })
