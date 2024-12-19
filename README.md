# Project: Taxonomic Data Analysis

This project provides a Python-based workflow for analyzing taxonomic species data and generating summary statistics and visualizations. It processes a given dataset (`taxonomic_data.csv`), produces a summary of species counts by phylum, calculates averages, and creates a bar chart visualization. The process is containerized using Docker for easy setup and reproducibility.

## Overview

**Key Steps:**
1. **Data Input:** A CSV file with taxonomic classifications and associated species counts.
2. **Processing & Summarization:** Compute total species counts per phylum and average species counts per species within each phylum.
3. **Visualization:** Generate a `phylum_species_count.png` bar chart of total species count by phylum.
4. **Output:** Write summarized results to `phylum_summary.csv`.

**Technologies & Tools:**
- **Python 3:** Data processing and analysis.
- **Pandas:** Data manipulation and aggregation.
- **Matplotlib:** Bar chart visualization.
- **Docker:** Containerization for reproducible environments.

## Repository Contents

- `analysis_script.py`: Main Python script that processes input data, performs calculations, and generates outputs.
- `taxonomic_data.csv`: Example input dataset.
- `phylum_summary.csv`: Summary of results by phylum.
- `phylum_species_count.png`: Visualization of total species count per phylum.
- `requirements.txt`: Python dependencies.
- `Dockerfile`: Instructions for building the Docker image.
- `Task_1.pdf`: Background task description.
- `README.md`: Project documentation.

## Running the Analysis

### Prerequisites
- **Docker** must be installed on your machine.
- The input CSV file (`taxonomic_data.csv`) must be in your working directory.

### Steps
```bash
# Build the Docker image
docker build -t taxonomic-analyzer .

# Run the container, mounting your current directory for input/output
docker run -v $(pwd):/data taxonomic-analyzer \
python analysis_script.py --input /data/taxonomic_data.csv --output /data


Run the Container:
bash
Copy code
docker run -v $(pwd):/data taxonomic-analyzer \
python analysis_script.py --input /data/taxonomic_data.csv --output /data
Explanation:

-v $(pwd):/data: Mounts your current directory to /data inside the container.
--input /data/taxonomic_data.csv: Specifies the input CSV file inside the container.
--output /data: Saves phylum_summary.csv and phylum_species_count.png to your host directory.
Check the Outputs
After the container finishes running:

phylum_summary.csv: Contains summarized species counts by phylum.
phylum_species_count.png: A bar chart visualization of total species counts by phylum.
Notes & Assumptions
The script gracefully handles missing or invalid data by treating missing counts as zero and filtering out rows with missing phyla.
You can adapt the workflow by modifying the input dataset or adjusting the logic in analysis_script.py.
If you need additional Python packages, update requirements.txt and rebuild the Docker image.

## License
This project is provided for demonstration purposes. Please review and adhere to any applicable data and licensing requirements.




