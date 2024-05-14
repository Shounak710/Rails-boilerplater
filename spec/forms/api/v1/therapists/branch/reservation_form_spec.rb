# frozen_string_literal: true

require "rails_helper"

RSpec.describe ::Api::V1::Therapists::Branch::ReservationForm, type: :model do
  let(:subject) { described_class.new(data) }

  let(:data) do
    {}
  end

  let(:reservation) { subject.record }

  context "validations" do
    let(:subject) { described_class.new }

    # it { is_expected.to validate_presence_of :email }
  end

  describe "#save" do
    let(:result) { ::Api::V1::Therapists::Branch::Reservation.find(reservation.id) }

    context "updates existing data" do
      let(:data) do
      end

      it "does not create a new record" do
        expect { subject.save }.not_to change(::Api::V1::Therapists::Branch::Reservation, :count)
      end

      it "contains correct data" do
        subject.save
        
        # expect(account.email).to eq("managernew@test.com")
      end

      it "stores correct data" do
        subject.save

        # expect(result.email).to eq("managernew@test.com")
      end
    end

    context "create new record" do
      it "creates a new record" do
        expect { subject.save }.to change(::Api::V1::Therapists::Branch::Reservation, :count).by(1)
      end

      it "contains correct data" do
        subject.save

        # expect(account.email).to eq("admin@test.com")
      end

      it "stores correct data" do
        subject.save

        # expect(result.email).to eq("admin@test.com")
      end
    end
  end
end
