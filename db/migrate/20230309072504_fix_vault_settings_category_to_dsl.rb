# frozen_string_literal: true

class FixVaultSettingsCategoryToDsl < ActiveRecord::Migration[6.0]
  def up
    Setting.where(category: 'Setting::Vault').update_all(category: 'Setting') if column_exists?(:settings, :category)
  end
end
