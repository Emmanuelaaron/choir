class ChoirmembersController < ApplicationController
  before_action :authenticate_user!
  def new; end

  def welcome
    kansas = ChoirMember.kansanga_members
    downtown = ChoirMember.downtown_members
    bweyos = ChoirMember.bweyogerere_members
    kyengs = ChoirMember.kyengera_members
    lubowa = ChoirMember.lubowa_members
    ebbs = ChoirMember.entebbe_members
    gulu = ChoirMember.gulu_members
    bugosi = ChoirMember.bugolobi_members
    juba = ChoirMember.juba_members
    mbarara = ChoirMember.mbarara_members
    jinja = ChoirMember.jinja_members
    @summaries = {}

    @summaries['Kansanga'] = {}
    @summaries['Kansanga']['total'] = kansas.count
    @summaries['Kansanga']['Tenor'] = kansas.where('voice' => 'Tenor').count
    @summaries['Kansanga']['Soprano'] = kansas.where('voice' => 'Soprano').count
    @summaries['Kansanga']['Alto'] = kansas.where('voice' => 'Alto').count
    @summaries['Kansanga']['Bass'] = kansas.where('voice' => 'Bass').count
    @summaries['Kansanga']['Baritone'] = kansas.where('voice' => 'Baritone').count

    @summaries['Downtown'] = {}
    @summaries['Downtown']['total'] = downtown.count
    @summaries['Downtown']['Tenor'] = downtown.where('voice' => 'Tenor').count
    @summaries['Downtown']['Soprano'] = downtown.where('voice' => 'Soprano').count
    @summaries['Downtown']['Alto'] = downtown.where('voice' => 'Alto').count
    @summaries['Downtown']['Bass'] = downtown.where('voice' => 'Bass').count
    @summaries['Downtown']['Baritone'] = downtown.where('voice' => 'Baritone').count

    @summaries['Bweyogerere'] = {}
    @summaries['Bweyogerere']['total'] = bweyos.count
    @summaries['Bweyogerere']['Tenor'] = bweyos.where('voice' => 'Tenor').count
    @summaries['Bweyogerere']['Soprano'] = bweyos.where('voice' => 'Soprano').count
    @summaries['Bweyogerere']['Alto'] = bweyos.where('voice' => 'Alto').count
    @summaries['Bweyogerere']['Bass'] = bweyos.where('voice' => 'Bass').count
    @summaries['Bweyogerere']['Baritone'] = bweyos.where('voice' => 'Baritone').count

    @summaries['Kyengera'] = {}
    @summaries['Kyengera']['total'] = kyengs.count
    @summaries['Kyengera']['Tenor'] = kyengs.where('voice' => 'Tenor').count
    @summaries['Kyengera']['Soprano'] = kyengs.where('voice' => 'Soprano').count
    @summaries['Kyengera']['Alto'] = kyengs.where('voice' => 'Alto').count
    @summaries['Kyengera']['Bass'] = kyengs.where('voice' => 'Bass').count
    @summaries['Kyengera']['Baritone'] = kyengs.where('voice' => 'Baritone').count

    @summaries['Lubowa'] = {}
    @summaries['Lubowa']['total'] = lubowa.count
    @summaries['Lubowa']['Tenor'] = lubowa.where('voice' => 'Tenor').count
    @summaries['Lubowa']['Soprano'] = lubowa.where('voice' => 'Soprano').count
    @summaries['Lubowa']['Alto'] = lubowa.where('voice' => 'Alto').count
    @summaries['Lubowa']['Bass'] = lubowa.where('voice' => 'Bass').count
    @summaries['Lubowa']['Baritone'] = lubowa.where('voice' => 'Baritone').count

    @summaries['Entebbe'] = {}
    @summaries['Entebbe']['total'] = ebbs.count
    @summaries['Entebbe']['Tenor'] = ebbs.where('voice' => 'Tenor').count
    @summaries['Entebbe']['Soprano'] = ebbs.where('voice' => 'Soprano').count
    @summaries['Entebbe']['Alto'] = ebbs.where('voice' => 'Alto').count
    @summaries['Entebbe']['Bass'] = ebbs.where('voice' => 'Bass').count
    @summaries['Entebbe']['Baritone'] = ebbs.where('voice' => 'Baritone').count

    @summaries['Gulu'] = {}
    @summaries['Gulu']['total'] = gulu.count
    @summaries['Gulu']['Tenor'] = gulu.where('voice' => 'Tenor').count
    @summaries['Gulu']['Soprano'] = gulu.where('voice' => 'Soprano').count
    @summaries['Gulu']['Alto'] = gulu.where('voice' => 'Alto').count
    @summaries['Gulu']['Bass'] = gulu.where('voice' => 'Bass').count
    @summaries['Gulu']['Baritone'] = gulu.where('voice' => 'Baritone').count

    @summaries['Bugolobi'] = {}
    @summaries['Bugolobi']['total'] = bugosi.count
    @summaries['Bugolobi']['Tenor'] = bugosi.where('voice' => 'Tenor').count
    @summaries['Bugolobi']['Soprano'] = bugosi.where('voice' => 'Soprano').count
    @summaries['Bugolobi']['Alto'] = bugosi.where('voice' => 'Alto').count
    @summaries['Bugolobi']['Bass'] = bugosi.where('voice' => 'Bass').count
    @summaries['Bugolobi']['Baritone'] = bugosi.where('voice' => 'Baritone').count

    @summaries['Juba'] = {}
    @summaries['Juba']['total'] = juba.count
    @summaries['Juba']['Tenor'] = juba.where('voice' => 'Tenor').count
    @summaries['Juba']['Soprano'] = juba.where('voice' => 'Soprano').count
    @summaries['Juba']['Alto'] = juba.where('voice' => 'Alto').count
    @summaries['Juba']['Bass'] = juba.where('voice' => 'Bass').count
    @summaries['Juba']['Baritone'] = juba.where('voice' => 'Baritone').count

    @summaries['Mbarara'] = {}
    @summaries['Mbarara']['total'] = mbarara.count
    @summaries['Mbarara']['Tenor'] = mbarara.where('voice' => 'Tenor').count
    @summaries['Mbarara']['Soprano'] = mbarara.where('voice' => 'Soprano').count
    @summaries['Mbarara']['Alto'] = mbarara.where('voice' => 'Alto').count
    @summaries['Mbarara']['Bass'] = mbarara.where('voice' => 'Bass').count
    @summaries['Mbarara']['Baritone'] = mbarara.where('voice' => 'Baritone').count

    @summaries['Jinja'] = {}
    @summaries['Jinja']['total'] = jinja.count
    @summaries['Jinja']['Tenor'] = jinja.where('voice' => 'Tenor').count
    @summaries['Jinja']['Soprano'] = jinja.where('voice' => 'Soprano').count
    @summaries['Jinja']['Alto'] = jinja.where('voice' => 'Alto').count
    @summaries['Jinja']['Bass'] = jinja.where('voice' => 'Bass').count
    @summaries['Jinja']['Baritone'] = jinja.where('voice' => 'Baritone').count

    @summaries
  end

  def create
    @member = ChoirMember.create(member_params)
    if @member.save
      redirect_to root_path, notice: 'Choir Member Added to the DataBase'
    else
      error = @member.errors.messages
      redirect_to add_member_path, alert: "#{error.keys[0]} #{error.values[0][0]}!"
    end
  end

  def kansanga
    @members = ChoirMember.kansanga_members
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def downtown
    @members = ChoirMember.downtown_members
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def bweyogerere
    @members = ChoirMember.bweyogerere_members
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def kyengera
    @members = ChoirMember.kyengera_members
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def lubowa
    @members = ChoirMember.lubowa_members

    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def entebbe
    @members = ChoirMember.entebbe_members
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def gulu
    @members = ChoirMember.gulu_members
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def mbarara
    @members = ChoirMember.mbarara_members
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def bugolobi
    @members = ChoirMember.bugolobi_members
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def juba
    @members = ChoirMember.juba_members
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def jinja
    @members = ChoirMember.jinja_members
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  private

  def member_params
    params['member'].permit(:firstname, :lastname, :contact, :cellnumber, :celebrationpoint, :voice, :descipled,
                            :email)
  end
end
