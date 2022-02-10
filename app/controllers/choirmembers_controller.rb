class ChoirmembersController < ApplicationController
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
    @summaries = {}

    @summaries['Kansanga'] = {}
    @summaries['Kansanga']['total'] = kansas.count
    @summaries['Kansanga']['tenor'] = kansas.where('voice' => 'tenor').count
    @summaries['Kansanga']['soprano'] = kansas.where('voice' => 'soprano').count
    @summaries['Kansanga']['alto'] = kansas.where('voice' => 'alto').count
    @summaries['Kansanga']['base'] = kansas.where('voice' => 'base').count
    @summaries['Kansanga']['baritone'] = kansas.where('voice' => 'baritone').count

    @summaries['Downtown'] = {}
    @summaries['Downtown']['total'] = downtown.count
    @summaries['Downtown']['tenor'] = downtown.where('voice' => 'tenor').count
    @summaries['Downtown']['soprano'] = downtown.where('voice' => 'soprano').count
    @summaries['Downtown']['alto'] = downtown.where('voice' => 'alto').count
    @summaries['Downtown']['base'] = downtown.where('voice' => 'base').count
    @summaries['Downtown']['baritone'] = downtown.where('voice' => 'baritone').count

    @summaries['Bweyogerere'] = {}
    @summaries['Bweyogerere']['total'] = bweyos.count
    @summaries['Bweyogerere']['tenor'] = bweyos.where('voice' => 'tenor').count
    @summaries['Bweyogerere']['soprano'] = bweyos.where('voice' => 'soprano').count
    @summaries['Bweyogerere']['alto'] = bweyos.where('voice' => 'alto').count
    @summaries['Bweyogerere']['base'] = bweyos.where('voice' => 'base').count
    @summaries['Bweyogerere']['baritone'] = bweyos.where('voice' => 'baritone').count

    @summaries['Kyengera'] = {}
    @summaries['Kyengera']['total'] = kyengs.count
    @summaries['Kyengera']['tenor'] = kyengs.where('voice' => 'tenor').count
    @summaries['Kyengera']['soprano'] = kyengs.where('voice' => 'soprano').count
    @summaries['Kyengera']['alto'] = kyengs.where('voice' => 'alto').count
    @summaries['Kyengera']['base'] = kyengs.where('voice' => 'base').count
    @summaries['Kyengera']['baritone'] = kyengs.where('voice' => 'baritone').count

    @summaries['Lubowa'] = {}
    @summaries['Lubowa']['total'] = lubowa.count
    @summaries['Lubowa']['tenor'] = lubowa.where('voice' => 'tenor').count
    @summaries['Lubowa']['soprano'] = lubowa.where('voice' => 'soprano').count
    @summaries['Lubowa']['alto'] = lubowa.where('voice' => 'alto').count
    @summaries['Lubowa']['base'] = lubowa.where('voice' => 'base').count
    @summaries['Lubowa']['baritone'] = lubowa.where('voice' => 'baritone').count

    @summaries['Entebbe'] = {}
    @summaries['Entebbe']['total'] = ebbs.count
    @summaries['Entebbe']['tenor'] = ebbs.where('voice' => 'tenor').count
    @summaries['Entebbe']['soprano'] = ebbs.where('voice' => 'soprano').count
    @summaries['Entebbe']['alto'] = ebbs.where('voice' => 'alto').count
    @summaries['Entebbe']['base'] = ebbs.where('voice' => 'base').count
    @summaries['Entebbe']['baritone'] = ebbs.where('voice' => 'baritone').count

    @summaries['Gulu'] = {}
    @summaries['Gulu']['total'] = gulu.count
    @summaries['Gulu']['tenor'] = gulu.where('voice' => 'tenor').count
    @summaries['Gulu']['soprano'] = gulu.where('voice' => 'soprano').count
    @summaries['Gulu']['alto'] = gulu.where('voice' => 'alto').count
    @summaries['Gulu']['base'] = gulu.where('voice' => 'base').count
    @summaries['Gulu']['baritone'] = gulu.where('voice' => 'baritone').count

    @summaries['Bugolobi'] = {}
    @summaries['Bugolobi']['total'] = bugosi.count
    @summaries['Bugolobi']['tenor'] = bugosi.where('voice' => 'tenor').count
    @summaries['Bugolobi']['soprano'] = bugosi.where('voice' => 'soprano').count
    @summaries['Bugolobi']['alto'] = bugosi.where('voice' => 'alto').count
    @summaries['Bugolobi']['base'] = bugosi.where('voice' => 'base').count
    @summaries['Bugolobi']['baritone'] = bugosi.where('voice' => 'baritone').count

    @summaries['Juba'] = {}
    @summaries['Juba']['total'] = juba.count
    @summaries['Juba']['tenor'] = juba.where('voice' => 'tenor').count
    @summaries['Juba']['soprano'] = juba.where('voice' => 'soprano').count
    @summaries['Juba']['alto'] = juba.where('voice' => 'alto').count
    @summaries['Juba']['base'] = juba.where('voice' => 'base').count
    @summaries['Juba']['baritone'] = juba.where('voice' => 'baritone').count

    @summaries['Mbarara'] = {}
    @summaries['Mbarara']['total'] = mbarara.count
    @summaries['Mbarara']['tenor'] = mbarara.where('voice' => 'tenor').count
    @summaries['Mbarara']['soprano'] = mbarara.where('voice' => 'soprano').count
    @summaries['Mbarara']['alto'] = mbarara.where('voice' => 'alto').count
    @summaries['Mbarara']['base'] = mbarara.where('voice' => 'base').count
    @summaries['Mbarara']['baritone'] = mbarara.where('voice' => 'baritone').count

    p @summaries

    @summaries
  end
end
