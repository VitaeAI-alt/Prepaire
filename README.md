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
