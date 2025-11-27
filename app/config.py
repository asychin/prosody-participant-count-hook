"""
Configuration for Room API
"""
from pydantic_settings import BaseSettings
from typing import Optional


class Settings(BaseSettings):
    """Application Settings"""
    
    # API Key for authentication
    api_key: str = "change-me-in-production"
    
    # Prosody HTTP API URL
    prosody_url: str = "http://prosody:5280"
    
    # MUC domain
    muc_domain: str = "muc.meet.yourdomain.com"
    
    # Alternative MUC domain (conference alias)
    muc_domain_alt: Optional[str] = "conference.meet.yourdomain.com"
    
    # App settings
    app_title: str = "ProsPyDoor - Prosody Python Door"
    app_version: str = "1.0.0"
    debug: bool = False
    
    class Config:
        env_file = ".env"
        case_sensitive = False


settings = Settings()
