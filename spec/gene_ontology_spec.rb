require 'spec_helper'

require_relative '../lib/gene_ontology'

describe "GeneOntology" do

  context 'finding a term' do

    before(:all) do
      go = GeneOntology.new.from_file('/Users/barendt/gems/gene_ontology/spec/goslim_generic.obo')
      @term = go.find_term_by_id('GO:0006913')
    end

    it 'can return a specific term by id' do
      @term.id.should == 'GO:0006913'
      @term.name.should == 'nucleocytoplasmic transport'
    end
  end
end
