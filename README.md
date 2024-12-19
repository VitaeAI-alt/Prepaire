# Taxonomic Data Analysis

A Python-based workflow for analyzing taxonomic species data and generating summary statistics and visualizations. This project processes a dataset (`taxonomic_data.csv`), summarizes species counts by phylum, calculates averages, and produces a bar chart visualization. The workflow is containerized using Docker for easy setup and reproducibility.

---

## 🚀 **Overview**

### Key Steps
1. **Data Input**: A CSV file containing taxonomic classifications and species counts.
2. **Processing & Summarization**:
   - Compute total species count for each phylum.
   - Calculate average species count per species within each phylum.
3. **Visualization**: Generate a bar chart (`phylum_species_count.png`) displaying the total species count per phylum.
4. **Output**: Write summarized results to `phylum_summary.csv` and produce the visualization.

### Technologies & Tools
- **Python 3**: Core language for data processing.
- **Pandas**: For data manipulation and aggregation.
- **Matplotlib**: For creating visualizations.
- **Docker**: For a reproducible containerized environment.

---

## 📂 **Repository Contents**

| File/Directory            | Description                                                                 |
|---------------------------|-----------------------------------------------------------------------------|
| `analysis_script.py`      | Main Python script for data processing and visualization.                  |
| `taxonomic_data.csv`      | Example input dataset containing taxonomic information.                    |
| `phylum_summary.csv`      | Output file with summarized results.                                       |
| `phylum_species_count.png`| Bar chart visualization of total species count by phylum.                 |
| `requirements.txt`        | Python dependencies for the project.                                       |
| `Dockerfile`              | Instructions for building the Docker image.                                |
| `Task_1.pdf`              | Background task description and requirements.                              |
| `README.md`               | This documentation file.                                                   |

---

## ⚙️ **Running the Analysis**

### Prerequisites
- Docker installed on your machine.
- The input CSV file (`taxonomic_data.csv`) available in your working directory.

### Steps

#### 1. Build the Docker Image
```bash
docker build -t taxonomic-analyzer .

2. Run the Container
Run the container, mounting your current directory to access input data and write output files:

bash
Copy code
docker run -v $(pwd):/data taxonomic-analyzer \
python analysis_script.py --input /data/taxonomic_data.csv --output /data
Explanation:

-v $(pwd):/data: Mounts your current directory to /data inside the container.
--input /data/taxonomic_data.csv: Specifies the input file location inside the container.
--output /data: Outputs (phylum_summary.csv and phylum_species_count.png) will be saved to your host directory.
3. Check the Outputs
After the container finishes running, you should see:

phylum_summary.csv: Summarized results.
phylum_species_count.png: Bar chart visualization.
📝 Notes & Assumptions
Handles missing or invalid data by treating missing counts as zero and filtering out rows with missing phylum information.
The workflow is adaptable by modifying the input dataset or adjusting script logic.
To install or update dependencies, edit requirements.txt and rebuild the Docker image.
📜 License
This project is for demonstration purposes and may not be under any specific license. Ensure compliance with your organization’s data and licensing requirements.

