from pathlib import Path
import yaml
import os

curdir = os.path.dirname(__file__)
default_dir = os.path.join(curdir, 'config_data')
default_file = os.path.join(default_dir, 'nusings_config.yaml')

def load_config(config_path=default_file):
    """
    Load the configuration from a YAML file.
    Args:
        config_path (str): Path to the YAML configuration file.
    Returns:
        dict: Configuration parameters.
    """
    with open(config_path, "r") as f:
        config = yaml.safe_load(f)
    return config