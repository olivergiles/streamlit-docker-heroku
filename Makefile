.PHONEY: build_streamlit
build_streamlit:
	docker build -f Dockerfile.streamlit -t streamlit:dev .

.PHONEY: run_streamlit
run_streamlit:
	docker run -e PORT=8080 -p 8080:8080 streamlit:dev
