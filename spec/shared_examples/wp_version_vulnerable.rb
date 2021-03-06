# encoding: UTF-8

shared_examples 'WpVersion::Vulnerable' do

  describe '#db_file' do
    after { expect(subject.db_file).to eq @expected }

    context 'when :db_file is no set' do
      it 'returns the default one' do
        @expected = WORDPRESSES_FILE
      end
    end

    context 'when the :db_file is already set' do
      it 'returns it' do
        @expected       = 'test.json'
        subject.db_file = @expected
      end
    end
  end

  describe '#identifier' do
    its(:identifier) { should eq '1.2' }
  end

end
