Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # コード変更時に自動でリロード
  config.cache_classes = false

  # Eager loadを無効化
  config.eager_load = false

  # エラー画面を詳細に表示
  config.consider_all_requests_local = true

  # デバッグ用ログ
  config.server_timing = true

  # キャッシュ設定
  if Rails.root.join("tmp/caching-dev.txt").exist?
    config.cache_store = :memory_store
    config.public_file_server.headers = {
      "Cache-Control" => "public, max-age=#{2.days.to_i}"
    }
  else
    config.cache_store = :null_store
  end

  # Active Storage
  config.active_storage.service = :local

  # メーラー設定
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.perform_caching = false

  # 非推奨警告ログ
  config.active_support.deprecation = :log
  config.active_support.disallowed_deprecation = :raise
  config.active_support.disallowed_deprecation_warnings = []

  # マイグレーションが保留中の場合エラー
  config.active_record.migration_error = :page_load
  config.active_record.verbose_query_logs = true

  # アセット関連
  config.assets.quiet = true

  # -------------------------------------------
  # Codespaces / Cloud IDE 対策
  # CSRFのORIGINチェックを無効化
  config.action_controller.forgery_protection_origin_check = false

  # Cloud IDE のドメインを許可
  config.hosts << /.*\.app\.github\.dev/
  # -------------------------------------------
end
